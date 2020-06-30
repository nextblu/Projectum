<template>
    <div>
        <section class="hero is-info is-large">
            <div class="hero-head">
                <nav class="navbar">
                    <div class="container">
                        <div class="navbar-brand">
                            <a class="navbar-item">
                                <div class="tags has-addons">
                                    <span class="tag">NextBlu</span>
                                    <span class="tag is-primary">Projectum</span>
                                </div>
                            </a>
                            <span class="navbar-burger burger" data-target="navbarMenuHeroB">
            <span></span>
            <span></span>
            <span></span>
          </span>
                        </div>
                        <div id="navbarMenuHeroB" class="navbar-menu">
                            <div class="navbar-end">
                                <a class="navbar-item is-active">
                                    Projects
                                </a>
                                <a class="navbar-item" href="https://t.me/NextBlu">
                                    Internal chat
                                </a>
                                <a class="navbar-item" href="https://docs.nextblu.com">
                                    Documentation
                                </a>
                                <span class="navbar-item">
              <a class="button is-info is-inverted" href="https://www.github.com/NextBlu">
                <span class="icon">
                  <i class="fab fa-github"></i>
                </span>
                <span>Github</span>
              </a>
            </span>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>

            <div class="hero-body">
                <div class="container has-text-centered">
                    <p class="title">
                        Projectum
                    </p>
                    <p class="subtitle">
                        A project? A story.
                    </p>
                </div>
            </div>

            <div class="hero-foot">
                <nav class="tabs is-boxed is-fullwidth">
                    <div class="container">
                        <ul>
                            <li class="is-active">
                                <a>Most upvoted projects</a>
                            </li>
                            <li>
                                <a>Latest project</a>
                            </li>
                            <li>
                                <a>What we are working on</a>
                            </li>
                            <li>
                                <a>Future</a>
                            </li>
                            <li>
                                <a>Submit a Project</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </section>




        <div class="section header">
            <h2 class="title has-text-centered dividing-header neat">Projectum! 💯</h2>
        </div>


        <div class="content">

            <Post v-for="a in sortedSubmissions" :post="a" :key="a.id"></Post>
           <!--<SubmitBox @submittedPost="createPost"></SubmitBox>-->
        </div>
    </div>
</template>

<script>
import Post from '@/components/Post'
import SubmitBox from '@/components/SubmitBox'
import seed from '@/seed.json'

export default {
    components: {
        Post,
        SubmitBox
    },
    data: function () {
        return {
            submissions: seed.posts
        }
    },
    computed: {
        sortedSubmissions: function () {
            return this.submissions.slice(0).sort( (a,b) => {
                return b.votes - a.votes;
            });
        },
        numSubmissions: function () {
            return this.submissions.length;
        }
    },
    methods: {
        createPost: function (post) {
            post.votes = 0;
            post.id = this.numSubmissions + 1;
            this.submissions.push(post);
        }
    }
}
</script>


// STYLE
<style scoped>

.header {
    padding: 3rem 1rem 1.5rem;
    color: wheat;
}
.neat {
    color: wheat;
}

.footer {
    padding: 1rem;
}
</style>

