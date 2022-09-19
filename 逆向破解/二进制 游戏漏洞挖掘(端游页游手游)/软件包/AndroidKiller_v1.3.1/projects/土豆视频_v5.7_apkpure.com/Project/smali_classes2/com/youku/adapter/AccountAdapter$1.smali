.class Lcom/youku/adapter/AccountAdapter$1;
.super Ljava/lang/Object;
.source "AccountAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/AccountAdapter;->refreshRecommendViews(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/AccountAdapter;

.field final synthetic val$recommendData:Lcom/youku/vo/SearchOfData;


# direct methods
.method constructor <init>(Lcom/youku/adapter/AccountAdapter;Lcom/youku/vo/SearchOfData;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/youku/adapter/AccountAdapter$1;->this$0:Lcom/youku/adapter/AccountAdapter;

    iput-object p2, p0, Lcom/youku/adapter/AccountAdapter$1;->val$recommendData:Lcom/youku/vo/SearchOfData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 343
    const-string v0, "account_click_key"

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/youku/adapter/AccountAdapter$1;->this$0:Lcom/youku/adapter/AccountAdapter;

    iget-object v1, p0, Lcom/youku/adapter/AccountAdapter$1;->val$recommendData:Lcom/youku/vo/SearchOfData;

    iget-object v1, v1, Lcom/youku/vo/SearchOfData;->video2:Lcom/youku/vo/SearchOfVideo;

    invoke-static {v0, v1}, Lcom/youku/adapter/AccountAdapter;->access$000(Lcom/youku/adapter/AccountAdapter;Lcom/youku/vo/SearchOfVideo;)V

    goto :goto_0
.end method
