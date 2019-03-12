/*
** main.c for  in /home/antoine/Rendu/Assembly/asm_minilibc/test
** 
** Made by Antoine
** Login   <antoine.roche@epitech.eu>
** 
** Started on  Mon Mar 20 16:35:15 2017 Antoine
** Last update Sun Mar 26 23:00:53 2017 Simon
*/

#include <stdio.h>
#include <string.h>

size_t	strlen(const char *str);
int	strcmp(const char *s1, const char *s2);
int	strncmp(const char *s1, const char *s2, size_t a);
char	*rindex(const char *s, int c);
char	*strchr(const char *s, int c);
char	*strstr(const char *s1, const char *s2);
size_t	strcspn(const char *s1, const char *s2);
char	*strpbrk(const char *s1, const char *s2);

int	main(int ac, char **av)
{
  printf("TESTS UNITAIRES :\n");

  printf("\nstrlen:\n");
  printf("arg1: '%s' | ret: %d\n", "hello world!", strlen(strdup("hello world!")));

  printf("\nstrcmp:\n");
  printf("arg1: '%s' | arg2: '%s' | ret: %d\n", "123", "123", strcmp(strdup("123"), strdup("123")));
  printf("arg1: '%s' | arg2: '%s' | ret: %d\n", "123", "123456", strcmp(strdup("123"), strdup("123456")));
  printf("arg1: '%s' | arg2: '%s' | ret: %d\n", "1234567", "123", strcmp(strdup("123456"), strdup("123")));

  printf("\nrindex:\n");
  printf("arg1: '%s' | arg2: '%c' | ret: %s\n", "123", '3', rindex(strdup("123"), '3'));
  printf("arg1: '%s' | arg2: '%c' | ret: %s\n", "1234", '3', rindex(strdup("1234"), '3'));
  printf("arg1: '%s' | arg2: '%c' | ret: %s\n", "123", '4', rindex(strdup("123"), '4'));
  printf("arg1: '%s' | arg2: '%s' | ret: %s\n", "123", "\\0", rindex(strdup("123"), '\0'));

  printf("\nstrncmp:\n");
  printf("arg1: '%s' | arg2: '%s' | arg3:%d | ret: %d\n", "123", "1234567", 3, strncmp(strdup("123"), strdup("1234567"), 3));
  printf("arg1: '%s' | arg2: '%s' | arg3: %d | ret: %d\n", "123", "1234567", 4, strncmp(strdup("123"), strdup("1234567"), 4));
  printf("arg1: '%s' | arg2: '%s' | arg3: %d | ret: %d\n", "1234567", "123", 3, strncmp(strdup("1234567"), strdup("123"), 3));

  printf("\nstrchr:\n");
  printf("arg1: '%s' | arg2: '%c' | ret: %s\n", "123", '3', strchr(strdup("abc"), 'c'));
  printf("arg1: '%s' | arg2: '%c' | ret: %s\n", "123", '1', strchr(strdup("123"), '1'));
  printf("arg1: '%s' | arg2: '%c' | ret: %s\n", "123", '4', strchr(strdup("123"), '4'));
  printf("arg1: '%s' | arg2: '%s' | ret: %s\n", "123", "\\0", strchr(strdup("123"), '\0'));

  printf("\nstrstr:\n");
  printf("arg1: '%s' | arg2: '%s' | ret: %s\n", "1234567", "123", strstr(strdup("1234567"), strdup("123")));
  printf("arg1: '%s' | arg2: '%s' | ret: %s\n", "1234567", "456", strstr(strdup("1234567"), strdup("456")));
  printf("arg1: '%s' | arg2: '%s' | ret: %s\n", "1234567", "789", strstr(strdup("1234567"), strdup("789")));
  printf("arg1: '%s' | arg2: '%s' | ret: %s\n", "123", "\\0", strstr(strdup("123"), strdup("\0")));

  printf("\nstrcspn:\n");
  printf("arg1: '%s' | arg2: '%s' | ret: %d\n", "1234567", "123", strcspn(strdup("1234567"), strdup("123")));
  printf("arg1: '%s' | arg2: '%s' | ret: %d\n", "1234567", "3", strcspn(strdup("1234567"), strdup("3")));
  printf("arg1: '%s' | arg2: '%s' | ret: %d\n", "1234567", "89", strcspn(strdup("1234567"), strdup("89")));
  printf("arg1: '%s' | arg2: '%s' | ret: %d\n", "123", "\\0", strcspn(strdup("123"), strdup("\0")));

  printf("\nstrpbrk:\n");
  printf("arg1: '%s' | arg2: '%s' | ret: %c\n", "1234567", "123", strpbrk(strdup("1234567"), strdup("123")));
  printf("arg1: '%s' | arg2: '%s' | ret: %c\n", "1234567", "3", strpbrk(strdup("1234567"), strdup("3")));
  printf("arg1: '%s' | arg2: '%s' | ret: %c\n", "1234567", "89", strpbrk(strdup("1234567"), strdup("89")));
  printf("arg1: '%s' | arg2: '%s' | ret: %c\n", "123", "\\0", strpbrk(strdup("123"), strdup("\0")));
  return (0);
}
