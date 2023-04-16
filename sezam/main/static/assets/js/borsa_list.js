const App = {
    data() {
     return {
        status: 0, //0 - начално положение; 1 -  тече тест; 2 - край на теста и показваме резултата
        }
     },

    methods: {
        reloadItem(){
        if (this.status == 0){this.status = 1} else {this.status = 0}
        },
    },
    created: function(){
        this.status
    }
}

Vue.createApp(App).mount('#main')