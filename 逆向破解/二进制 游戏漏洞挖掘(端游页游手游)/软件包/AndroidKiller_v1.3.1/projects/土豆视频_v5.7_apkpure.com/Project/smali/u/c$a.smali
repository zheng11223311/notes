.class Lu/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lv/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lv/h;

    invoke-direct {v0}, Lv/h;-><init>()V

    sput-object v0, Lu/c$a;->a:Lv/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lv/h;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lu/c$a;->a:Lv/h;

    return-object v0
.end method
