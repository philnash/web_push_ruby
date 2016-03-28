self.addEventListener("push", function(event) {
  event.waitUntil(
    self.registration.sendNotification("This is a push notification", {
      body: "It worked!"
    })
  );
});