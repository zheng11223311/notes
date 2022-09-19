.class public Lcom/youku/vo/SearchFilter;
.super Ljava/lang/Object;
.source "SearchFilter.java"


# instance fields
.field public filter:Ljava/lang/String;

.field public ob:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/vo/SearchFilter;->ob:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/SearchFilter;->filter:Ljava/lang/String;

    return-void
.end method
