.class Lcom/youku/uplayer/MediaPlayerProxy$13;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Lcom/youku/uplayer/OnLoadingStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/uplayer/MediaPlayerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/uplayer/MediaPlayerProxy;


# direct methods
.method constructor <init>(Lcom/youku/uplayer/MediaPlayerProxy;)V
    .locals 0

    .prologue
    .line 991
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy$13;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndLoading()V
    .locals 2

    .prologue
    .line 1000
    const-string v0, "MediaPlayerProxy"

    const-string v1, "onEndLoading-->"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    return-void
.end method

.method public onStartLoading()V
    .locals 2

    .prologue
    .line 995
    const-string v0, "MediaPlayerProxy"

    const-string v1, "onStartLoading-->"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    return-void
.end method
