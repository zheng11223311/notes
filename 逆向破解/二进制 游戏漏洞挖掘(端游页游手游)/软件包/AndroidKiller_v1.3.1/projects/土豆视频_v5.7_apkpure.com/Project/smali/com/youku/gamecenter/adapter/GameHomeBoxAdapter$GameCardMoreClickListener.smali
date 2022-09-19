.class Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardMoreClickListener;
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
    name = "GameCardMoreClickListener"
.end annotation


# instance fields
.field private mBoxId:Ljava/lang/String;

.field private mCardTitle:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPostUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "postUrl"    # Ljava/lang/String;
    .param p3, "boxid"    # Ljava/lang/String;
    .param p4, "card_title"    # Ljava/lang/String;

    .prologue
    .line 967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 968
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardMoreClickListener;->mContext:Landroid/content/Context;

    .line 969
    iput-object p2, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardMoreClickListener;->mPostUrl:Ljava/lang/String;

    .line 970
    iput-object p3, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardMoreClickListener;->mBoxId:Ljava/lang/String;

    .line 971
    iput-object p4, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardMoreClickListener;->mCardTitle:Ljava/lang/String;

    .line 972
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 976
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardMoreClickListener;->mContext:Landroid/content/Context;

    const-string v1, "38"

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardMoreClickListener;->mBoxId:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardMoreClickListener;->mPostUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameCardMoreClickListener;->mCardTitle:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameRankActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    return-void
.end method
