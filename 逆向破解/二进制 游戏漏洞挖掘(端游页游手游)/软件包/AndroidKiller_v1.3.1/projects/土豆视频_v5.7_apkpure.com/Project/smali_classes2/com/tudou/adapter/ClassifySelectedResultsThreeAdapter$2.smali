.class Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$2;
.super Ljava/lang/Object;
.source "ClassifySelectedResultsThreeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;

.field final synthetic val$mCentrePosition:I


# direct methods
.method constructor <init>(Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;I)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$2;->this$0:Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;

    iput p2, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$2;->val$mCentrePosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$2;->this$0:Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;

    iget v1, p0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter$2;->val$mCentrePosition:I

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;->sendTackHandler(I)V

    .line 173
    return-void
.end method
