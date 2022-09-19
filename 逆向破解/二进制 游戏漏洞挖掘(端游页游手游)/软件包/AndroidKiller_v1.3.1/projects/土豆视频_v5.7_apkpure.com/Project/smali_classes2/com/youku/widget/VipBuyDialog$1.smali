.class Lcom/youku/widget/VipBuyDialog$1;
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
    .line 62
    iput-object p1, p0, Lcom/youku/widget/VipBuyDialog$1;->this$0:Lcom/youku/widget/VipBuyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/youku/widget/VipBuyDialog$1;->this$0:Lcom/youku/widget/VipBuyDialog;

    invoke-virtual {v0}, Lcom/youku/widget/VipBuyDialog;->dismiss()V

    .line 67
    return-void
.end method
