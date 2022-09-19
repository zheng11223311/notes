.class Lcom/youku/widget/SearchHeadLayout$9;
.super Ljava/lang/Object;
.source "SearchHeadLayout.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/SearchHeadLayout;->popUpFormatList(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/SearchHeadLayout;


# direct methods
.method constructor <init>(Lcom/youku/widget/SearchHeadLayout;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/youku/widget/SearchHeadLayout$9;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout$9;->this$0:Lcom/youku/widget/SearchHeadLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/widget/SearchHeadLayout;->isformatPop:Z

    .line 316
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout$9;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-static {v0}, Lcom/youku/widget/SearchHeadLayout;->access$600(Lcom/youku/widget/SearchHeadLayout;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020855

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 317
    return-void
.end method
