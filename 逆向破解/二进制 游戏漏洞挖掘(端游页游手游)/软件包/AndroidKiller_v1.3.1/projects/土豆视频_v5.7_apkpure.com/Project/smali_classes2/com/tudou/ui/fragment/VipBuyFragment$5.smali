.class Lcom/tudou/ui/fragment/VipBuyFragment$5;
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
    .line 216
    iput-object p1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$5;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment$5;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/VipBuyFragment;->access$800(Lcom/tudou/ui/fragment/VipBuyFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    const-string v1, "400-898-7799"

    invoke-static {v0, v1}, Lcom/youku/util/Util;->call(Landroid/app/Activity;Ljava/lang/String;)V

    .line 220
    return-void
.end method
