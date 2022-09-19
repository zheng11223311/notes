.class Lcom/tudou/detail/widget/VideoPlaylistBar$5;
.super Ljava/lang/Object;
.source "VideoPlaylistBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoPlaylistBar;->onTransitionEnd(Lcom/tudou/ui/activity/DetailActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoPlaylistBar;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$5;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$5;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$302(Lcom/tudou/detail/widget/VideoPlaylistBar;Z)Z

    .line 274
    return-void
.end method
