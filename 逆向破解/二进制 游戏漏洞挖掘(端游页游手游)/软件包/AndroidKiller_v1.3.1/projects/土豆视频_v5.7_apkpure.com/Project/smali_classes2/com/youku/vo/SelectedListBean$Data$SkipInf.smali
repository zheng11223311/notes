.class public Lcom/youku/vo/SelectedListBean$Data$SkipInf;
.super Ljava/lang/Object;
.source "SelectedListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/SelectedListBean$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SkipInf"
.end annotation


# instance fields
.field public channel_id:Ljava/lang/String;

.field public skip_type:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/SelectedListBean$Data;


# direct methods
.method public constructor <init>(Lcom/youku/vo/SelectedListBean$Data;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/youku/vo/SelectedListBean$Data$SkipInf;->this$0:Lcom/youku/vo/SelectedListBean$Data;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
