.class Lcom/tudou/ui/fragment/AttentionFragment$3;
.super Ljava/lang/Object;
.source "AttentionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/AttentionFragment;->initView()V
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
    .line 262
    iput-object p1, p0, Lcom/tudou/ui/fragment/AttentionFragment$3;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment$3;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1100(Lcom/tudou/ui/fragment/AttentionFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 266
    return-void
.end method
