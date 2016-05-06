;(function () {
  "use strict"

  Vue.component("vue-team-list", {
    template: "#team-list-template",
    data: function () {
      return {
        teamName: "",
        teamNames: []
      }
    },
    methods: {
      renderTeams: function () {
        this.teamName =  "",
        this.teamNames = []
      }
    }
  })
})()
