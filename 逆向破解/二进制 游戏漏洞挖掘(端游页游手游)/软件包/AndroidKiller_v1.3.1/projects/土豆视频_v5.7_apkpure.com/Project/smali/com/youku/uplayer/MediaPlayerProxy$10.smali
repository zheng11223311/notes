.class Lcom/youku/uplayer/MediaPlayerProxy$10;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Lcom/youku/uplayer/OnADPlayListener;


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
    .line 919
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy$10;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndPlayAD(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 928
    const/4 v0, 0x0

    return v0
.end method

.method public onStartPlayAD(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 923
    const/4 v0, 0x0

    return v0
.end method
