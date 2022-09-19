.class Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameMoreClickListener;
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
    name = "MyGameMoreClickListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 984
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameMoreClickListener;->mContext:Landroid/content/Context;

    .line 985
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 989
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$MyGameMoreClickListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameManagerActivity(Landroid/content/Context;)V

    .line 990
    return-void
.end method
