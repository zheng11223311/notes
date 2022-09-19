.class Lcom/tudou/ui/fragment/CachingFolderFragment$3;
.super Ljava/lang/Object;
.source "CachingFolderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CachingFolderFragment;->goMoreCacheFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CachingFolderFragment;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$3;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$3;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->showMoreCacheOrNot(I)V

    .line 201
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$3;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tudou/ui/fragment/CachingFolderFragment;->fragment:Lcom/tudou/detail/fragment/VideoCacheFragment;

    .line 202
    return-void
.end method
