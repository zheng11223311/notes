.class Lcom/youku/widget/VipBuyDialog$2;
.super Ljava/lang/Object;
.source "VipBuyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/VipBuyDialog;->buildView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/VipBuyDialog;


# direct methods
.method constructor <init>(Lcom/youku/widget/VipBuyDialog;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/youku/widget/VipBuyDialog$2;->this$0:Lcom/youku/widget/VipBuyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/youku/widget/VipBuyDialog$2;->this$0:Lcom/youku/widget/VipBuyDialog;

    invoke-static {v0}, Lcom/youku/widget/VipBuyDialog;->access$000(Lcom/youku/widget/VipBuyDialog;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/youku/widget/VipBuyDialog$2;->this$0:Lcom/youku/widget/VipBuyDialog;

    invoke-static {v2}, Lcom/youku/widget/VipBuyDialog;->access$000(Lcom/youku/widget/VipBuyDialog;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/PayAgreementActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 91
    return-void
.end method
