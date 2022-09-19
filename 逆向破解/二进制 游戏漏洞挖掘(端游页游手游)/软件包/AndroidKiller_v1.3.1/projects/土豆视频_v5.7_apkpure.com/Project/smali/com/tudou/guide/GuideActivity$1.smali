.class Lcom/tudou/guide/GuideActivity$1;
.super Ljava/lang/Object;
.source "GuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/guide/GuideActivity;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/guide/GuideActivity;


# direct methods
.method constructor <init>(Lcom/tudou/guide/GuideActivity;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/tudou/guide/GuideActivity$1;->this$0:Lcom/tudou/guide/GuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tudou/guide/GuideActivity$1;->this$0:Lcom/tudou/guide/GuideActivity;

    invoke-virtual {v0}, Lcom/tudou/guide/GuideActivity;->finish()V

    .line 80
    return-void
.end method
