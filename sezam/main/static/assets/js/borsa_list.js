const App = {
    data() {
     return {
        status: 0, //0 - показва се списък; 1 -  показва се единична обява; 2 - диалог за отзиви
        offers:{},
        selected_offer:0,
        comments:{},
        count_comments:0,
// -------- ИЗПИТ ПО ПРАКТИКА -----------
        button_comments: '',
        comments_mode:0,
// --------------------------------------
        }
     },

    methods: {
        setSection(SectionName){
            console.log('преди: '+this.status)
            if (SectionName=='списък'){this.status=0}
            if (SectionName=='обява'){this.status=1}
            if (SectionName=='отзив'){this.status=2}
            if (SectionName=='нова'){this.status=3}
            console.log('след: '+this.status)
        },
        showDetails(id){
            this.selected_offer=id
            this.reloadReviews(id)
            this.status=1
        },
        reloadList(){
            vm = this
            axios.get('/api/offers/')
            .then(function(response){
                vm.offers = response.data;
                for (i in vm.offers){
                    console.log(i)
                    console.log(vm.offers[0].title)
                    }
                })
        },
        reloadReviews(id){
            vm = this
            axios.get('/api/reviews/'+this.offers[this.selected_offer].id+'/')
            .then(function(response){
                vm.comments = response.data;
                vm.count_comments = vm.comments.length
                for (i in vm.comments){
                    console.log(i)
                    }
                console.log(vm.count_comments)
                })
        },
// -------- ИЗПИТ ПО ПРАКТИКА -----------
        showComments(){
            if (this.comments_mode==0){
                this.button_comments='Покажи коментарите'
                this.comments_mode=1
            }
            else {
                this.button_comments='Скрий коментарите'
                this.comments_mode=0
            }
        },
    },
// --------------------------------------
    created: function(){
// -------- ИЗПИТ ПО ПРАКТИКА -----------
        this.button_comments='Скрий коментарите'
        this.comments_mode=0
// --------------------------------------

        this.status=0
        this.reloadList()
    }
}

Vue.createApp(App).mount('#main')