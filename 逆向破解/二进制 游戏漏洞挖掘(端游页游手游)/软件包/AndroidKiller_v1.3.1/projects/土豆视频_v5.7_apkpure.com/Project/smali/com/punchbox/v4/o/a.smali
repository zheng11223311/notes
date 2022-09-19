.class public final Lcom/punchbox/v4/o/a;
.super Ljava/lang/Object;


# static fields
.field static final a:[Ljava/lang/String;

.field static final b:[Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Preparing to download."

    aput-object v1, v0, v3

    const-string v1, "Download in progress."

    aput-object v1, v0, v4

    const-string v1, "Download complete."

    aput-object v1, v0, v5

    const-string v1, "Error happens while downloading."

    aput-object v1, v0, v6

    const-string v1, "Please wait, will download soon."

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Downloading the file now."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Network unavailable, will auto resume after recovery."

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Android Market"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SDCard not available, operation canceled."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SDCard is almost full, pls clean up SDCard at first."

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Download error, file not exist in server."

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "File System IO error"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Begin download"

    aput-object v2, v0, v1

    sput-object v0, Lcom/punchbox/v4/o/a;->a:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u6b63\u5728\u51c6\u5907\u4e0b\u8f7d"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u6b63\u5728\u4e0b\u8f7d"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u4e0b\u8f7d\u6210\u529f"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u4e0b\u8f7d\u5931\u8d25"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u60a8\u7684\u5e94\u7528\u5f00\u59cb\u4e0b\u8f7d\uff0c\u7a0d\u540e\u5c06\u63d0\u793a\u60a8\u5b89\u88c5\uff01"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u60a8\u7684\u5e94\u7528\u6b63\u5728\u4e0b\u8f7d\uff0c\u8bf7\u7a0d\u7b49"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c \u7f51\u7edc\u6062\u590d\u540e\u4f1a\u81ea\u52a8\u6062\u590d\u4e0b\u8f7d"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u5b89\u5353\u5546\u5e97"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SD\u5361\u4e0d\u5b58\u5728\uff0c \u8bf7\u7a0d\u540e\u518d\u8bd5."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SD\u5361\u7a7a\u95f4\u4e0d\u8db3\uff0c \u8bf7\u91ca\u653e\u4e9b\u7a7a\u95f4\u540e\u518d\u8bd5."

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u4e0b\u8f7d\u5931\u8d25\uff1a\u8be5\u6587\u4ef6\u5728\u670d\u52a1\u5668\u4e0d\u5b58\u5728."

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "\u6587\u4ef6IO\u9519\u8bef"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\u5f00\u59cb\u4e0b\u8f7d"

    aput-object v2, v0, v1

    sput-object v0, Lcom/punchbox/v4/o/a;->b:[Ljava/lang/String;

    invoke-static {}, Lcom/punchbox/v4/o/a;->a()V

    return-void
.end method

.method private static a()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/punchbox/v4/o/a;->p:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->p:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/punchbox/v4/o/a;->b:[Ljava/lang/String;

    aget-object v0, v0, v2

    sput-object v0, Lcom/punchbox/v4/o/a;->c:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->b:[Ljava/lang/String;

    aget-object v0, v0, v3

    sput-object v0, Lcom/punchbox/v4/o/a;->d:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->b:[Ljava/lang/String;

    aget-object v0, v0, v4

    sput-object v0, Lcom/punchbox/v4/o/a;->e:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->b:[Ljava/lang/String;

    aget-object v0, v0, v5

    sput-object v0, Lcom/punchbox/v4/o/a;->f:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->b:[Ljava/lang/String;

    aget-object v0, v0, v6

    sput-object v0, Lcom/punchbox/v4/o/a;->g:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->b:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    sput-object v0, Lcom/punchbox/v4/o/a;->h:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->b:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    sput-object v0, Lcom/punchbox/v4/o/a;->i:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->b:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    sput-object v0, Lcom/punchbox/v4/o/a;->j:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->b:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    sput-object v0, Lcom/punchbox/v4/o/a;->k:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->b:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    sput-object v0, Lcom/punchbox/v4/o/a;->l:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->b:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    sput-object v0, Lcom/punchbox/v4/o/a;->m:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->b:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    sput-object v0, Lcom/punchbox/v4/o/a;->n:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->b:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    sput-object v0, Lcom/punchbox/v4/o/a;->o:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/punchbox/v4/o/a;->a:[Ljava/lang/String;

    aget-object v0, v0, v2

    sput-object v0, Lcom/punchbox/v4/o/a;->c:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->a:[Ljava/lang/String;

    aget-object v0, v0, v3

    sput-object v0, Lcom/punchbox/v4/o/a;->d:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->a:[Ljava/lang/String;

    aget-object v0, v0, v4

    sput-object v0, Lcom/punchbox/v4/o/a;->e:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->a:[Ljava/lang/String;

    aget-object v0, v0, v5

    sput-object v0, Lcom/punchbox/v4/o/a;->f:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->a:[Ljava/lang/String;

    aget-object v0, v0, v6

    sput-object v0, Lcom/punchbox/v4/o/a;->g:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->a:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    sput-object v0, Lcom/punchbox/v4/o/a;->h:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->a:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    sput-object v0, Lcom/punchbox/v4/o/a;->i:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->a:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    sput-object v0, Lcom/punchbox/v4/o/a;->j:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->a:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    sput-object v0, Lcom/punchbox/v4/o/a;->k:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->a:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    sput-object v0, Lcom/punchbox/v4/o/a;->l:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->a:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    sput-object v0, Lcom/punchbox/v4/o/a;->m:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->a:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    sput-object v0, Lcom/punchbox/v4/o/a;->n:Ljava/lang/String;

    sget-object v0, Lcom/punchbox/v4/o/a;->a:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    sput-object v0, Lcom/punchbox/v4/o/a;->o:Ljava/lang/String;

    goto :goto_0
.end method
