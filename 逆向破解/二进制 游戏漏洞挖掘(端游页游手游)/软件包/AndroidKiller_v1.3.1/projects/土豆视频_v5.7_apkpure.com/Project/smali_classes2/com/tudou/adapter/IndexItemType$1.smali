.class Lcom/tudou/adapter/IndexItemType$1;
.super Ljava/lang/Object;
.source "IndexItemType.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/IndexItemType;->setIndexCellValue(Lcom/tudou/adapter/IndexItemViewCache;Lcom/youku/vo/CardInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/IndexItemType;

.field final synthetic val$aCardInfo:Lcom/youku/vo/CardInfo;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/IndexItemType;Lcom/youku/vo/CardInfo;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/tudou/adapter/IndexItemType$1;->this$0:Lcom/tudou/adapter/IndexItemType;

    iput-object p2, p0, Lcom/tudou/adapter/IndexItemType$1;->val$aCardInfo:Lcom/youku/vo/CardInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tudou/adapter/IndexItemType$1;->this$0:Lcom/tudou/adapter/IndexItemType;

    iget-object v1, p0, Lcom/tudou/adapter/IndexItemType$1;->val$aCardInfo:Lcom/youku/vo/CardInfo;

    invoke-static {v0, v1}, Lcom/tudou/adapter/IndexItemType;->access$000(Lcom/tudou/adapter/IndexItemType;Lcom/youku/vo/CardInfo;)V

    .line 89
    return-void
.end method
