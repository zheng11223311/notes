.class public Lcom/tudou/adapter/SelectedListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SelectedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/SelectedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field descTv:Landroid/widget/TextView;

.field posterImg:Lcom/youku/widget/YoukuImageView;

.field final synthetic this$0:Lcom/tudou/adapter/SelectedListAdapter;

.field titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/tudou/adapter/SelectedListAdapter;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/tudou/adapter/SelectedListAdapter$ViewHolder;->this$0:Lcom/tudou/adapter/SelectedListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
