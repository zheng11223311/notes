.class Lcom/tudou/adapter/HotHistoryAdapter$1;
.super Ljava/lang/Object;
.source "HotHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/HotHistoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/HotHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/HotHistoryAdapter;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/tudou/adapter/HotHistoryAdapter$1;->this$0:Lcom/tudou/adapter/HotHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tudou/adapter/HotHistoryAdapter$1;->this$0:Lcom/tudou/adapter/HotHistoryAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/HotHistoryAdapter;->access$000(Lcom/tudou/adapter/HotHistoryAdapter;)Lcom/tudou/adapter/HotHistoryAdapter$OnClearListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/tudou/adapter/HotHistoryAdapter$1;->this$0:Lcom/tudou/adapter/HotHistoryAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/HotHistoryAdapter;->access$000(Lcom/tudou/adapter/HotHistoryAdapter;)Lcom/tudou/adapter/HotHistoryAdapter$OnClearListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tudou/adapter/HotHistoryAdapter$OnClearListener;->onClear()V

    .line 126
    :cond_0
    return-void
.end method
