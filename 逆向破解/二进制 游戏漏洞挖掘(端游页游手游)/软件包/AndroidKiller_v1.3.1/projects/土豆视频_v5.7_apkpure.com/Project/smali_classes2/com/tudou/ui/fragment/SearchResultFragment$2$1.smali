.class Lcom/tudou/ui/fragment/SearchResultFragment$2$1;
.super Ljava/lang/Object;
.source "SearchResultFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SearchResultFragment$2;->onFinishVideo(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/SearchResultFragment$2;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchResultFragment$2;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$2$1;->this$1:Lcom/tudou/ui/fragment/SearchResultFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$2$1;->this$1:Lcom/tudou/ui/fragment/SearchResultFragment$2;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchResultFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1700(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/adapter/SearchResultAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/adapter/SearchResultAdapter;->notifyDataSetChanged()V

    .line 338
    return-void
.end method
