const App = {
    data() {
     return {
        status: 0, //0 - показва се списък; 1 -  показва се единична обява; 2 - диалог за отзиви
        offers:{},
        selected_offer:0,
        comments:{},
        count_comments:0,
        }
     },

    methods: {
        setSection(SectionName){
            if (SectionName=='списък'){this.status=0}
            if (SectionName=='обява'){this.status=1}
            if (SectionName=='отзив'){this.status=2}
            if (SectionName=='нова'){this.status=3}
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
    },
    created: function(){
        this.status=0
        this.reloadList()
    }
}

Vue.createApp(App).mount('#main')