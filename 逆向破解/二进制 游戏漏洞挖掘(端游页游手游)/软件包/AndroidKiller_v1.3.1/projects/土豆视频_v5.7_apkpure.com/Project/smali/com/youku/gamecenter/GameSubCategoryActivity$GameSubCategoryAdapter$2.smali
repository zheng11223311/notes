.class Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$2;
.super Ljava/lang/Object;
.source "GameSubCategoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->onActionButtonClickListener(ILcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;

.field final synthetic val$holder:Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;

.field final synthetic val$info:Lcom/youku/gamecenter/data/GameInfo;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;ILcom/youku/gamecenter/data/GameInfo;)V
    .locals 0

    .prologue
    .line 976
    iput-object p1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$2;->this$0:Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;

    iput-object p2, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$2;->val$holder:Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;

    iput p3, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$2;->val$position:I

    iput-object p4, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$2;->val$info:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 980
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$2;->this$0:Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;

    invoke-static {v0}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->access$300(Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$2;->val$holder:Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;

    iget-object v1, v1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$2;->val$position:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$2;->val$info:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v4, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter$2;->this$0:Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;

    invoke-static {v4}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->access$400(Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleDownloadAction(Landroid/content/Context;Landroid/widget/ImageView;ILcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    return-void
.end method
