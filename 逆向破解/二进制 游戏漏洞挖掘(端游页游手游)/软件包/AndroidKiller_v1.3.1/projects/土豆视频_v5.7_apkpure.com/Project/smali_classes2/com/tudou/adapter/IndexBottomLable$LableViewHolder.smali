.class public Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;
.super Ljava/lang/Object;
.source "IndexBottomLable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/IndexBottomLable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LableViewHolder"
.end annotation


# instance fields
.field public mIcon:Landroid/widget/ImageView;

.field public mTxt:Landroid/widget/TextView;

.field public mView:Landroid/view/View;

.field final synthetic this$0:Lcom/tudou/adapter/IndexBottomLable;


# direct methods
.method public constructor <init>(Lcom/tudou/adapter/IndexBottomLable;Landroid/view/View;)V
    .locals 1
    .param p2, "aView"    # Landroid/view/View;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;->this$0:Lcom/tudou/adapter/IndexBottomLable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;->mView:Landroid/view/View;

    .line 78
    const v0, 0x7f0c0743

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;->mTxt:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0c0744

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 80
    return-void
.end method
