.class Lcom/tudou/ui/fragment/TheShowRuleFragment$1;
.super Ljava/lang/Object;
.source "TheShowRuleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/TheShowRuleFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/TheShowRuleFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/TheShowRuleFragment;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tudou/ui/fragment/TheShowRuleFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRuleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRuleFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRuleFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRuleFragment;->access$000(Lcom/tudou/ui/fragment/TheShowRuleFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 48
    return-void
.end method
