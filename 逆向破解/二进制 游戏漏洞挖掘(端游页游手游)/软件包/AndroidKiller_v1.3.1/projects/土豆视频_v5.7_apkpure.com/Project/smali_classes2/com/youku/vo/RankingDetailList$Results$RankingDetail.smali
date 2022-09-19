.class public Lcom/youku/vo/RankingDetailList$Results$RankingDetail;
.super Ljava/lang/Object;
.source "RankingDetailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/RankingDetailList$Results;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RankingDetail"
.end annotation


# instance fields
.field public aid:Ljava/lang/String;

.field public img_link:Ljava/lang/String;

.field public item_code:Ljava/lang/String;

.field public notice:Ljava/lang/String;

.field public play_link:Ljava/lang/String;

.field public playtimes:Ljava/lang/String;

.field public rank:Ljava/lang/String;

.field public short_desc:Ljava/lang/String;

.field final synthetic this$1:Lcom/youku/vo/RankingDetailList$Results;

.field public title:Ljava/lang/String;

.field public update:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/RankingDetailList$Results;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->this$1:Lcom/youku/vo/RankingDetailList$Results;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
