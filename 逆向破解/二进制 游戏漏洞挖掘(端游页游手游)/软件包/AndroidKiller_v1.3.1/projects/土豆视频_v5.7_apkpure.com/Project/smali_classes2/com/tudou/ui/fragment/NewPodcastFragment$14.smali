.class Lcom/tudou/ui/fragment/NewPodcastFragment$14;
.super Ljava/lang/Object;
.source "NewPodcastFragment.java"

# interfaces
.implements Lcom/tudou/ui/activity/NewPodcastActivity$OnBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/NewPodcastFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/NewPodcastFragment;)V
    .locals 0

    .prologue
    .line 1401
    iput-object p1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$14;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickBackListener()V
    .locals 1

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$14;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->finish()V

    .line 1406
    return-void
.end method
