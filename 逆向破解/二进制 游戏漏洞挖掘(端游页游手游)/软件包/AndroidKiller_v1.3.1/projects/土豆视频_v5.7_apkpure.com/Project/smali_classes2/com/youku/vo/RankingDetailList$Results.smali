.class public Lcom/youku/vo/RankingDetailList$Results;
.super Ljava/lang/Object;
.source "RankingDetailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/RankingDetailList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Results"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/RankingDetailList$Results$RankingDetail;
    }
.end annotation


# instance fields
.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/RankingDetailList$Results$RankingDetail;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/youku/vo/RankingDetailList;


# direct methods
.method public constructor <init>(Lcom/youku/vo/RankingDetailList;)V
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lcom/youku/vo/RankingDetailList$Results;->this$0:Lcom/youku/vo/RankingDetailList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method
