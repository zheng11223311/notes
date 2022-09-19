.class Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameH5CardClickListener;
.super Ljava/lang/Object;
.source "GameHomeBoxAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GameH5CardClickListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSource:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mSource"    # Ljava/lang/String;
    .param p3, "mUrl"    # Ljava/lang/String;

    .prologue
    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 873
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameH5CardClickListener;->mContext:Landroid/content/Context;

    .line 874
    iput-object p2, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameH5CardClickListener;->mSource:Ljava/lang/String;

    .line 875
    iput-object p3, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameH5CardClickListener;->mUrl:Ljava/lang/String;

    .line 876
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 880
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameH5CardClickListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameH5CardClickListener;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameH5CardClickListener;->mSource:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchWebActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    return-void
.end method
