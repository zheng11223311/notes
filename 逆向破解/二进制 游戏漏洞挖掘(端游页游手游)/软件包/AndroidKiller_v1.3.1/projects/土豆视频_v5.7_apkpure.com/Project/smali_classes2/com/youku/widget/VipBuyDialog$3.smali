.class Lcom/youku/widget/VipBuyDialog$3;
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

.field final synthetic val$agreement_agree:Landroid/widget/ImageView;

.field final synthetic val$btn_buy:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/youku/widget/VipBuyDialog;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/youku/widget/VipBuyDialog$3;->this$0:Lcom/youku/widget/VipBuyDialog;

    iput-object p2, p0, Lcom/youku/widget/VipBuyDialog$3;->val$agreement_agree:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/youku/widget/VipBuyDialog$3;->val$btn_buy:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lcom/youku/widget/VipBuyDialog$3;->this$0:Lcom/youku/widget/VipBuyDialog;

    invoke-static {v0}, Lcom/youku/widget/VipBuyDialog;->access$100(Lcom/youku/widget/VipBuyDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/youku/widget/VipBuyDialog$3;->this$0:Lcom/youku/widget/VipBuyDialog;

    invoke-static {v0, v2}, Lcom/youku/widget/VipBuyDialog;->access$102(Lcom/youku/widget/VipBuyDialog;Z)Z

    .line 105
    iget-object v0, p0, Lcom/youku/widget/VipBuyDialog$3;->val$agreement_agree:Landroid/widget/ImageView;

    const v1, 0x7f0203bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 106
    iget-object v0, p0, Lcom/youku/widget/VipBuyDialog$3;->val$btn_buy:Landroid/widget/TextView;

    const v1, 0x7f020a29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 107
    iget-object v0, p0, Lcom/youku/widget/VipBuyDialog$3;->val$btn_buy:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/VipBuyDialog$3;->this$0:Lcom/youku/widget/VipBuyDialog;

    invoke-static {v0, v3}, Lcom/youku/widget/VipBuyDialog;->access$102(Lcom/youku/widget/VipBuyDialog;Z)Z

    .line 110
    iget-object v0, p0, Lcom/youku/widget/VipBuyDialog$3;->val$agreement_agree:Landroid/widget/ImageView;

    const v1, 0x7f0203be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 111
    iget-object v0, p0, Lcom/youku/widget/VipBuyDialog$3;->val$btn_buy:Landroid/widget/TextView;

    const v1, 0x7f020a2a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 112
    iget-object v0, p0, Lcom/youku/widget/VipBuyDialog$3;->val$btn_buy:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0
.end method
