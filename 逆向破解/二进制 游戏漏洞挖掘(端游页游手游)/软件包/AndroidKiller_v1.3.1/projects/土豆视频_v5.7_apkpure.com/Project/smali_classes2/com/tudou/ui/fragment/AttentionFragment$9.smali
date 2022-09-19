.class Lcom/tudou/ui/fragment/AttentionFragment$9;
.super Ljava/lang/Object;
.source "AttentionFragment.java"

# interfaces
.implements Lcom/tudou/ui/activity/AttentionActivity$OnBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/AttentionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/AttentionFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/AttentionFragment;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcom/tudou/ui/fragment/AttentionFragment$9;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickBackListener()Z
    .locals 2

    .prologue
    .line 634
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$9;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/AttentionAdapter;->getEditMode()Z

    move-result v0

    .line 635
    .local v0, "result":Z
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$9;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/AttentionAdapter;->getEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    :cond_0
    return v0
.end method
