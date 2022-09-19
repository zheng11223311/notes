.class Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$2;
.super Ljava/lang/Object;
.source "GameSubCategoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->onActionButtonClickListener(ILcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;

.field final synthetic val$info:Lcom/youku/gamecenter/data/GameInfo;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;Lcom/youku/gamecenter/data/GameInfo;I)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$2;->this$0:Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;

    iput-object p2, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$2;->val$info:Lcom/youku/gamecenter/data/GameInfo;

    iput p3, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$2;->this$0:Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;

    invoke-static {v0}, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->access$000(Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$2;->val$info:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$2;->this$0:Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;

    invoke-static {v2}, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->access$100(Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$2;->val$position:I

    add-int/lit8 v3, v3, 0x1

    const-string v4, ""

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleGameAction(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 329
    return-void
.end method
