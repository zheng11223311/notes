.class Lcom/tudou/detail/widget/VideoFavCacheBar$3$1;
.super Ljava/lang/Object;
.source "VideoFavCacheBar.java"

# interfaces
.implements Lcom/tudou/detail/DetailModel$OnVideoFavCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoFavCacheBar$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/widget/VideoFavCacheBar$3;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoFavCacheBar$3;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoFavCacheBar$3$1;->this$1:Lcom/tudou/detail/widget/VideoFavCacheBar$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoFavComplete(ZZLjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "fav"    # Z
    .param p2, "success"    # Z
    .param p3, "vid"    # Ljava/lang/String;
    .param p4, "error"    # Ljava/lang/String;
    .param p5, "errorCode"    # I

    .prologue
    .line 100
    invoke-static {}, Lcom/tudou/detail/widget/VideoFavCacheBar;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoFavComplete fav = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-eqz p2, :cond_0

    .line 102
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoFavCacheBar$3$1;->this$1:Lcom/tudou/detail/widget/VideoFavCacheBar$3;

    iget-object v0, v0, Lcom/tudou/detail/widget/VideoFavCacheBar$3;->this$0:Lcom/tudou/detail/widget/VideoFavCacheBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoFavCacheBar;->access$000(Lcom/tudou/detail/widget/VideoFavCacheBar;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoFavCacheBar$3$1;->this$1:Lcom/tudou/detail/widget/VideoFavCacheBar$3;

    iget-object v0, v0, Lcom/tudou/detail/widget/VideoFavCacheBar$3;->this$0:Lcom/tudou/detail/widget/VideoFavCacheBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoFavCacheBar;->access$000(Lcom/tudou/detail/widget/VideoFavCacheBar;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->toggle()V

    goto :goto_0
.end method
