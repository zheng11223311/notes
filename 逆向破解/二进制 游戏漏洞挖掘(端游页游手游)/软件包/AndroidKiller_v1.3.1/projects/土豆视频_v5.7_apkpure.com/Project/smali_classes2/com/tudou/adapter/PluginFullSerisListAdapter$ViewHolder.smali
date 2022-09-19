.class Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PluginFullSerisListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/PluginFullSerisListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field desc:Landroid/widget/TextView;

.field isplay:Landroid/widget/ImageView;

.field isread:Landroid/widget/ImageView;

.field playtimes:Landroid/widget/TextView;

.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tudou/adapter/PluginFullSerisListAdapter;

.field time:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/PluginFullSerisListAdapter;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/tudou/adapter/PluginFullSerisListAdapter$ViewHolder;->this$0:Lcom/tudou/adapter/PluginFullSerisListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
