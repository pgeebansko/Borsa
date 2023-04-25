const App = {
    data() {
     return {
        status: 0, //0 - показва се списък; 1 -  показва се единична обява
        }
     },

    methods: {
        reloadItem(){
        if (this.status == 0){this.status = 1} else {this.status = 0}
        },
        triggerModal(){
        $('#ModalReview').trigger('focus')
        },
    },
    created: function(){
        this.status
    }
}

Vue.createApp(App).mount('#main')