.class Lcom/youku/player/ad/imagead/ImageAd$1;
.super Ljava/lang/Object;
.source "ImageAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 144
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAd$1;->this$0:Lcom/youku/player/ad/imagead/ImageAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd$1;->this$0:Lcom/youku/player/ad/imagead/ImageAd;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAd;->startTimer()V

    .line 148
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAd$1;->this$0:Lcom/youku/player/ad/imagead/ImageAd;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAd;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->dismiss()V

    .line 149
    return-void
.end method
