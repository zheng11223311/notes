.class Lcom/tudou/adapter/ClassifySelectedResultsTwoAdapter$2;
.super Ljava/lang/Object;
.source "ClassifySelectedResultsTwoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/ClassifySelectedResultsTwoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/ClassifySelectedResultsTwoAdapter;

.field final synthetic val$mRightPosition:I


# direct methods
.method constructor <init>(Lcom/tudou/adapter/ClassifySelectedResultsTwoAdapter;I)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/tudou/adapter/ClassifySelectedResultsTwoAdapter$2;->this$0:Lcom/tudou/adapter/ClassifySelectedResultsTwoAdapter;

    iput p2, p0, Lcom/tudou/adapter/ClassifySelectedResultsTwoAdapter$2;->val$mRightPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/tudou/adapter/ClassifySelectedResultsTwoAdapter$2;->this$0:Lcom/tudou/adapter/ClassifySelectedResultsTwoAdapter;

    iget v1, p0, Lcom/tudou/adapter/ClassifySelectedResultsTwoAdapter$2;->val$mRightPosition:I

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/ClassifySelectedResultsTwoAdapter;->sendTackHandler(I)V

    .line 159
    return-void
.end method
