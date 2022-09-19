.class Lcom/tudou/adapter/ClassifySelectedResultsTwoAdapter$1;
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

.field final synthetic val$mLeftPosition:I


# direct methods
.method constructor <init>(Lcom/tudou/adapter/ClassifySelectedResultsTwoAdapter;I)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/tudou/adapter/ClassifySelectedResultsTwoAdapter$1;->this$0:Lcom/tudou/adapter/ClassifySelectedResultsTwoAdapter;

    iput p2, p0, Lcom/tudou/adapter/ClassifySelectedResultsTwoAdapter$1;->val$mLeftPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tudou/adapter/ClassifySelectedResultsTwoAdapter$1;->this$0:Lcom/tudou/adapter/ClassifySelectedResultsTwoAdapter;

    iget v1, p0, Lcom/tudou/adapter/ClassifySelectedResultsTwoAdapter$1;->val$mLeftPosition:I

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/ClassifySelectedResultsTwoAdapter;->sendTackHandler(I)V

    .line 131
    return-void
.end method
