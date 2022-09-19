.class Lcom/tudou/ui/fragment/VipBuyFragment$3;
.super Ljava/lang/Object;
.source "VipBuyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/VipBuyFragment;->buildView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/VipBuyFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/VipBuyFragment;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$3;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment$3;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/VipBuyFragment;->finish()V

    .line 194
    return-void
.end method
