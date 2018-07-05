"use strict";

// Класс товаров
class Good {
    constructor(url) {
        this.goodId = null;
        this.url = url;
        this.imgSrc = null;
        this.goodName = null;
        this.goodPrice = null;
        this.goodItems = [];
    }

    getGoods($appendContainer) {
        let self = this;

        $.ajax({
            type: 'GET',
            url: self.url,
            dataType: 'json',
            context: this,
            cache: false,
            success: function (data) {
                for (let key in data.goods) {
                    this.goodItems.push(data.goods[key]);
                }
                self.render($appendContainer);
            },


            error: function (error) {
            }
        });
    }

    render($appendContainer) {
        for (let key in this.goodItems) {
            this.goodId = parseInt(this.goodItems[key].id_good);
            this.imgSrc = this.goodItems[key].image;
            this.goodName = this.goodItems[key].name;
            this.goodPrice = parseInt(this.goodItems[key].price);


            let $goodCard = $('<div />', {
                class: 'product-card',
                id: this.goodId,
                'data-name': this.goodName,
                'data-price': this.goodPrice,
                'data-img': this.imgSrc
            });

            let $cardLink = $('<a />', {
                class: 'product-card__link',
                href: '#'
            });

            let $goodImage = $('<img/>', {
                class: 'product-card__img',
                src: '/img/' + this.imgSrc,
                alt: 'Layer'
            });

            let $goodTitle = $('<h3 />', {
                text: this.goodName
            });

            let $goodPrice = $('<p />', {
                text: '$' + this.goodPrice
            });

            let $goodHoverContainer = $('<div />', {
                class: 'product-card__hover'
            });

            let $goodBuyBtn = $('<button />', {
                class: 'buy',
                text: 'Add to Cart',
                'data-id': this.id,
                'data-name': this.goodName,
                'data-price': this.goodPrice,
                'data-img': this.imgSrc
            });

            // Объединяем элементы в структуру
            $goodImage.appendTo($cardLink);
            $goodTitle.appendTo($cardLink);
            $goodPrice.appendTo($cardLink);
            $cardLink.appendTo($goodCard);

            $goodBuyBtn.appendTo($goodHoverContainer);
            $goodHoverContainer.appendTo($goodCard);

            $goodCard.appendTo($appendContainer);
        }
    }

    addGoods($appendContainer, limit) {
        let self = this;
        this.limit = limit;

        $.ajax({
            type: 'GET',
            url: self.url,
            dataType: 'json',
            context: this,
            data: {"limit": this.limit},
            success: function (data) {

                for (let key in data.goods) {
                    this.goodItems.push(data.goods[key]);
                    console.log(this.goodItems);
                }
                self.render($appendContainer);
                this.goodItems = [];
            },


            error: function (error) {
                // console.log('Что-то пошло не так', error);
            }
        });
    }
}
