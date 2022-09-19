.class Lcom/youku/gamecenter/GameSubCategoryActivity$NoResultViewClickListener;
.super Ljava/lang/Object;
.source "GameSubCategoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameSubCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoResultViewClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameSubCategoryActivity;


# direct methods
.method private constructor <init>(Lcom/youku/gamecenter/GameSubCategoryActivity;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$NoResultViewClickListener;->this$0:Lcom/youku/gamecenter/GameSubCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/gamecenter/GameSubCategoryActivity;Lcom/youku/gamecenter/GameSubCategoryActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/gamecenter/GameSubCategoryActivity;
    .param p2, "x1"    # Lcom/youku/gamecenter/GameSubCategoryActivity$1;

    .prologue
    .line 579
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameSubCategoryActivity$NoResultViewClickListener;-><init>(Lcom/youku/gamecenter/GameSubCategoryActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 583
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$NoResultViewClickListener;->this$0:Lcom/youku/gamecenter/GameSubCategoryActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->access$100(Lcom/youku/gamecenter/GameSubCategoryActivity;)V

    .line 584
    return-void
.end method
