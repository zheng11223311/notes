.class public Lcom/youku/vo/SearchIcon$IconResults;
.super Ljava/lang/Object;
.source "SearchIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/SearchIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconResults"
.end annotation


# instance fields
.field public icon_url:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public site_id:I

.field final synthetic this$0:Lcom/youku/vo/SearchIcon;


# direct methods
.method public constructor <init>(Lcom/youku/vo/SearchIcon;)V
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/youku/vo/SearchIcon$IconResults;->this$0:Lcom/youku/vo/SearchIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
