.class Lcom/youku/player/ad/pausead/PauseAdDomob$1;
.super Ljava/lang/Object;
.source "PauseAdDomob.java"

# interfaces
.implements Lcn/domob/android/ads/VideoIsPlayingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/pausead/PauseAdDomob;->start(Lcom/youku/player/goplay/AdvInfo;ILcom/youku/player/ad/pausead/IPauseAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/pausead/PauseAdDomob;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/pausead/PauseAdDomob;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/youku/player/ad/pausead/PauseAdDomob$1;->this$0:Lcom/youku/player/ad/pausead/PauseAdDomob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isPlaying()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method
