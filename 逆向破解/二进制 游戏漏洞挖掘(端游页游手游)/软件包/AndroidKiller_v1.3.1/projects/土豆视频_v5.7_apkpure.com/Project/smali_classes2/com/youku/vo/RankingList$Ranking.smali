.class public Lcom/youku/vo/RankingList$Ranking;
.super Ljava/lang/Object;
.source "RankingList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/RankingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ranking"
.end annotation


# instance fields
.field public channel_id:Ljava/lang/String;

.field public img_link:Ljava/lang/String;

.field public sub_title:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/RankingList;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/RankingList;)V
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lcom/youku/vo/RankingList$Ranking;->this$0:Lcom/youku/vo/RankingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
