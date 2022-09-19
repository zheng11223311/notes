.class Lcom/youku/player/ad/imagead/ImageAd$4;
.super Ljava/lang/Object;
.source "ImageAd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/imagead/ImageAd;->creatSelectDownloadDialog(Landroid/app/Activity;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/imagead/ImageAd;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/imagead/ImageAd;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAd$4;->this$0:Lcom/youku/player/ad/imagead/ImageAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 185
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd$4;->this$0:Lcom/youku/player/ad/imagead/ImageAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAd;->startTimer()V

    .line 187
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd$4;->this$0:Lcom/youku/player/ad/imagead/ImageAd;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAd;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->dismiss()V

    .line 189
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
