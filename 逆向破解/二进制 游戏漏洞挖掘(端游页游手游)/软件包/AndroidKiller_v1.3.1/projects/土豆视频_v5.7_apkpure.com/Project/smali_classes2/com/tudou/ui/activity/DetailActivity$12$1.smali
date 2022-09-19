.class Lcom/tudou/ui/activity/DetailActivity$12$1;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Lcom/tudou/videoshare/ShareUtil$IShareCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/DetailActivity$12;->onUpdateVideoRecordComplete(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/activity/DetailActivity$12;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/DetailActivity$12;)V
    .locals 0

    .prologue
    .line 1949
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity$12$1;->this$1:Lcom/tudou/ui/activity/DetailActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(ZLjava/lang/String;)V
    .locals 3
    .param p1, "needDismiss"    # Z
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 1952
    invoke-static {}, Lcom/tudou/ui/activity/DetailActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShareUtil.shareImg callback dismiss need = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    return-void
.end method
