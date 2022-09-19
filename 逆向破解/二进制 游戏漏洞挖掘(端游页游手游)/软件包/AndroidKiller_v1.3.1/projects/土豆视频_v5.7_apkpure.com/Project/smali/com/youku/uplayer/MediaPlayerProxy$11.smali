.class Lcom/youku/uplayer/MediaPlayerProxy$11;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Lcom/youku/uplayer/OnMidADPlayListener;


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
    .line 933
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy$11;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndPlayMidAD(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 942
    const/4 v0, 0x0

    return v0
.end method

.method public onLoadingMidADStart()V
    .locals 0

    .prologue
    .line 947
    return-void
.end method

.method public onStartPlayMidAD(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 937
    const/4 v0, 0x0

    return v0
.end method
