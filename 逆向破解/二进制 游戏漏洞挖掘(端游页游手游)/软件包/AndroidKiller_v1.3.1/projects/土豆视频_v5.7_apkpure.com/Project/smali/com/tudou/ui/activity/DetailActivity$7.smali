.class Lcom/tudou/ui/activity/DetailActivity$7;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Lcom/youku/player/apiservice/ILanguageCode;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/DetailActivity;->initPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/DetailActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/DetailActivity;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity$7;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 559
    invoke-static {}, Lcom/tudou/ui/activity/DetailActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getLanCode"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$7;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/DetailActivity;->access$500(Lcom/tudou/ui/activity/DetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$7;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->access$502(Lcom/tudou/ui/activity/DetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 562
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$7;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/DetailActivity;->access$500(Lcom/tudou/ui/activity/DetailActivity;)Ljava/lang/String;

    move-result-object v0

    .line 564
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "language"

    const-string v1, "guoyu"

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
