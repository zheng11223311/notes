.class Lcom/youku/gamecenter/adapter/AppTagAdapter$TagViewOnClickListener;
.super Ljava/lang/Object;
.source "AppTagAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/adapter/AppTagAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TagViewOnClickListener"
.end annotation


# instance fields
.field private mIsCategory:Z

.field private mItem:Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;

.field final synthetic this$0:Lcom/youku/gamecenter/adapter/AppTagAdapter;


# direct methods
.method public constructor <init>(Lcom/youku/gamecenter/adapter/AppTagAdapter;Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;Z)V
    .locals 0
    .param p2, "item"    # Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;
    .param p3, "isCategory"    # Z

    .prologue
    .line 71
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/AppTagAdapter$TagViewOnClickListener;->this$0:Lcom/youku/gamecenter/adapter/AppTagAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/youku/gamecenter/adapter/AppTagAdapter$TagViewOnClickListener;->mItem:Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;

    .line 73
    iput-boolean p3, p0, Lcom/youku/gamecenter/adapter/AppTagAdapter$TagViewOnClickListener;->mIsCategory:Z

    .line 74
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/AppTagAdapter$TagViewOnClickListener;->this$0:Lcom/youku/gamecenter/adapter/AppTagAdapter;

    invoke-static {v0}, Lcom/youku/gamecenter/adapter/AppTagAdapter;->access$000(Lcom/youku/gamecenter/adapter/AppTagAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "detail_page"

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/AppTagAdapter$TagViewOnClickListener;->mItem:Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;

    iget-object v2, v2, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/gamecenter/adapter/AppTagAdapter$TagViewOnClickListener;->mItem:Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;

    iget-object v3, v3, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;->name:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/youku/gamecenter/adapter/AppTagAdapter$TagViewOnClickListener;->mIsCategory:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameSubCategoryActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 79
    return-void
.end method
