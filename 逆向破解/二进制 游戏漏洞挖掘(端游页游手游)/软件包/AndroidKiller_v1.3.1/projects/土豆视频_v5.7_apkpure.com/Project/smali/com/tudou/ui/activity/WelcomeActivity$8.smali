.class Lcom/tudou/ui/activity/WelcomeActivity$8;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Lcom/youku/http/LoadImgPosterThread$ImageCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/WelcomeActivity;->loadAdImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 1572
    iput-object p1, p0, Lcom/tudou/ui/activity/WelcomeActivity$8;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity$8;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-static {v0, p1}, Lcom/tudou/ui/activity/WelcomeActivity;->access$802(Lcom/tudou/ui/activity/WelcomeActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1577
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5e7f\u544a\u56fe\u7247\u4e0b\u8f7d\u5b8c\u6210=====\u7528\u65f6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity$8;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$2100(Lcom/tudou/ui/activity/WelcomeActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity$8;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/WelcomeActivity;->access$800(Lcom/tudou/ui/activity/WelcomeActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1582
    const-string v0, "bitmap_url"

    iget-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity$8;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-static {v1}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/AdStartpage;->RS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity$8;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/WelcomeActivity;->access$402(Lcom/tudou/ui/activity/WelcomeActivity;Z)Z

    .line 1585
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity$8;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/WelcomeActivity;->access$2200(Lcom/tudou/ui/activity/WelcomeActivity;I)V

    .line 1589
    return-void
.end method
