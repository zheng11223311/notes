.class Lcom/tudou/ui/fragment/DetailSerisCacheFragment$2;
.super Ljava/lang/Object;
.source "DetailSerisCacheFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$2;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$2;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$2;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$400(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$500(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;Ljava/util/ArrayList;)V

    .line 200
    return-void
.end method
