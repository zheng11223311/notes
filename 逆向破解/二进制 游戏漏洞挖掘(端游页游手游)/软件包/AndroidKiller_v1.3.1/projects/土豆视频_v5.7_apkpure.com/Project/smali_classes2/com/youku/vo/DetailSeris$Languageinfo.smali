.class public Lcom/youku/vo/DetailSeris$Languageinfo;
.super Ljava/lang/Object;
.source "DetailSeris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/DetailSeris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Languageinfo"
.end annotation


# instance fields
.field public is_default:Z

.field public lang:Ljava/lang/String;

.field public langCode:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/DetailSeris;


# direct methods
.method public constructor <init>(Lcom/youku/vo/DetailSeris;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/youku/vo/DetailSeris$Languageinfo;->this$0:Lcom/youku/vo/DetailSeris;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
