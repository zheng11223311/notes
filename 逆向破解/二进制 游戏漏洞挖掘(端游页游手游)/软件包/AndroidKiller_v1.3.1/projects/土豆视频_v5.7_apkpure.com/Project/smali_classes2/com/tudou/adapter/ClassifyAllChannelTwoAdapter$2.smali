.class Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$2;
.super Ljava/lang/Object;
.source "ClassifyAllChannelTwoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;

.field final synthetic val$mRightPosition:I


# direct methods
.method constructor <init>(Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;I)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$2;->this$0:Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;

    iput p2, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$2;->val$mRightPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$2;->this$0:Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;

    iget v1, p0, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter$2;->val$mRightPosition:I

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/ClassifyAllChannelTwoAdapter;->sendTackHandler(I)V

    .line 148
    return-void
.end method
